# TODO:
# init
# link
# clean

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
print "🆒  hi $USER!\n";

# variables
# 	scalar  $
# 	array   @
# 	hash    %

my $local_dotfile = "$PWD/Dotfile";
my $global_dotfile = "/Users/$USER/Dotfile";

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
		my $local_path = $local_path[0];
		my $user_path = "/Users/$USER/.$file_name";

		print
				"➡️  linking "
			. color ('bold cyan')
			. "$local_path"
			. color ('reset')
			. " to "
			. color ('bold cyan')
			. "$user_path"
			. color ('reset');

		if (-e $user_path) {
			print
					color ("bold yellow")
				. "\n⚠️  file $user_path exists";

			backup_file ($user_path);
		}

		link_file ($local_path, $user_path);
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
		$local_path = $_[0];
		$user_path = $_[1];

		print
			color("reset")
			. "linking";

		# $symlink_created = eval { symlink(, ""); 1 };

		if ($symlink_created == 1) {
			print
					"\n"
				. color ("bold green")
				. "✅  $_[1] linked"
				. color ("reset");
		}
		else {
			print "error linking $user_path :("
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
