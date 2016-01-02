use strict;
use warnings;

use Env;
use File::Copy;
# use File::Find;
use File::Find::Rule;
use Term::ANSIColor;

print color('bold green');
print "~/.dotfiles\n";
print "🏨  safe place for things and stuff ✨\n";
print "🖐  hi $USER!\n";

# variables
# 	scalar  $
# 	array   @
# 	hash    %

my $local_dotfile = "$PWD/Dotfile";
my $global_dotfile = "/Users/$USER/Dotfile";

my $backup = 1;

# copy ($local_dotfile, $global_dotfile)
# 	or die "Creating Dotfile failed: $!";

# print
# 		color ('reset') . "🚼  just created "
# 	. color ('bold green') . "Dotfile"
# 	. color ('reset') . " in /Users/$USER/\n";

open my $dotfile, '<', $global_dotfile;

# chomp - removes trailing newline
chomp (my @lines = <$dotfile>);

close $dotfile;

sub init_dotfiles {
	# create dotfile if not exists
}

sub link_dotfile {
	my $file_name = $_[0];

	my @local_path =
		File::Find::Rule
			-> file ()
			-> name ($file_name)
			-> maxdepth (2)
			-> in ( '.' );

	if (@local_path > 0) {
		my $local_path = "$PWD/$local_path[0]";
		my $user_path = "$HOME/.$file_name";

		if (-e $user_path) {
			my $already_linked = 0;
			my $existing_link = "";

			$existing_link = readlink($user_path);

			if (not $!) {
				if ($existing_link eq $local_path) {
					print color("bold green") .
					"✅  already linked: $user_path\n";
					$already_linked = 1;
				}
			} else {
				print
					color ("bold yellow") .
					"\n⚠️  file $user_path exists";
			}

			if ($backup) {
				if (not $already_linked) {
					# backup_file ($user_path);
				}
			} else {
				# `rm $user_path`;
			}
		} else {
			print
					"➡️  linking "
				. color ('bold cyan')
				. "$local_path"
				. color ('reset')
				. " to "
				. color ('bold cyan')
				. "$user_path"
				. color ('reset');
			link_file ($local_path, $user_path);
		}
	}
	else {
		print
			color ("bold red")
		. "⛔️  file $file_name not found"
		. color ("reset")
		. "\n";
	}

	sub backup_file {
		print
			color ("bold green")
		. "\n☑️  $_[0] backed up"
	}

	sub link_file {
		my $local_path = $_[0];
		my $user_path = $_[1];

		my $symlink_created = symlink($local_path, $user_path);

		if ($symlink_created == 1) {
			print
					"\n"
				. color ("bold green")
				. "✅  $_[1] linked"
				. color ("reset");
		}
		else {
			print color("red bold") . "\n⛔️  $user_path not linked"
		}
		# cmd
		# print "ln -s ./@_[0] @_[1]";
		print "\n";
	}
}

sub unlink_dotfile {
}

foreach (@lines) {
	my $line = $_;

	if (not $line =~ /^#/) {
		if ($line =~ /nobackup/) {
			$backup = 0;
			print
				color("red bold") .
				"⚠️  mad mode set, no backups\n" .
				color("reset");
		}
		if ($line =~ /link/) {
			my @line = split ' ', $line;
			my $file_name = $line[1];
			$file_name =~ s/'//g;
			link_dotfile ($file_name);
		}
		elsif ($line =~ /unlink/) {
			print color ('bold yellow') . "unlinking $line\n"
		}
	}
}

print
		color ("bold green")
	. "👌  done!"
	. color('reset')
	. "\n";
