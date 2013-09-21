use strict;
use vars qw($VERSION %IRSSI);

use Irssi;
$VERSION = '0.0.1';
%IRSSI = (
	authors     => 'pcat',
	contact     => 'pcat@home.org',
	name        => 'notify',
	description => 'notify on messages',
	url         => 'file:///dev/null',
	license     => 'GNU General Public License',
);

my $home = "$ENV{HOME}/.irssi/pids";
my $ppid = getppid();

sub pub_msg {
	my ($server, $msg, $nick, $address, $target) = @_;
	`touch $home/$ppid`;
	`irssi-notify-msg "$nick" "$address" "$ppid" >/dev/null 2>&1 &`;
}

Irssi::signal_add_last("message public", "pub_msg");
Irssi::signal_add_last("message private", "pub_msg");
Irssi::signal_add_last("message own_public", "pub_msg");
Irssi::signal_add_last("message own_private", "pub_msg");
Irssi::signal_add_last("dcc request", "pub_msg");
#Irssi::signal_add_last("print text", "pub_msg");
Irssi::print("PID: " . $ppid);
mkdir($home);
`touch $home/$ppid`;
