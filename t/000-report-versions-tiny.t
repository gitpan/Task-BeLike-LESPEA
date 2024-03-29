use strict;
use warnings;
use Test::More 0.88;
# This is a relatively nice way to avoid Test::NoWarnings breaking our
# expectations by adding extra tests, without using no_plan.  It also helps
# avoid any other test module that feels introducing random tests, or even
# test plans, is a nice idea.
our $success = 0;
END { $success && done_testing; }

# List our own version used to generate this
my $v = "\nGenerated by Dist::Zilla::Plugin::ReportVersions::Tiny v1.10\n";

eval {                     # no excuses!
    # report our Perl details
    my $want = '5.008';
    $v .= "perl: $] (wanted $want) on $^O from $^X\n\n";
};
defined($@) and diag("$@");

# Now, our module version dependencies:
sub pmver {
    my ($module, $wanted) = @_;
    $wanted = " (want $wanted)";
    my $pmver;
    eval "require $module;";
    if ($@) {
        if ($@ =~ m/Can't locate .* in \@INC/) {
            $pmver = 'module not found.';
        } else {
            diag("${module}: $@");
            $pmver = 'died during require.';
        }
    } else {
        my $version;
        eval { $version = $module->VERSION; };
        if ($@) {
            diag("${module}: $@");
            $pmver = 'died during VERSION check.';
        } elsif (defined $version) {
            $pmver = "$version";
        } else {
            $pmver = '<undef>';
        }
    }

    # So, we should be good, right?
    return sprintf('%-45s => %-10s%-15s%s', $module, $pmver, $wanted, "\n");
}

eval { $v .= pmver('Any::Moose','any version') };
eval { $v .= pmver('AnyEvent','any version') };
eval { $v .= pmver('Async::Interrupt','any version') };
eval { $v .= pmver('Coro','any version') };
eval { $v .= pmver('DBD::CSV','any version') };
eval { $v .= pmver('DBI','any version') };
eval { $v .= pmver('Data::Dumper::Perltidy','any version') };
eval { $v .= pmver('Data::Printer','any version') };
eval { $v .= pmver('Date::Calc','any version') };
eval { $v .= pmver('Date::Manip','any version') };
eval { $v .= pmver('DateTime','any version') };
eval { $v .= pmver('DateTime::Format::DB2','any version') };
eval { $v .= pmver('DateTime::Format::DBI','any version') };
eval { $v .= pmver('DateTime::Format::DateManip','any version') };
eval { $v .= pmver('DateTime::Format::DateParse','any version') };
eval { $v .= pmver('DateTime::Format::Duration','any version') };
eval { $v .= pmver('DateTime::Format::Duration::DurationString','any version') };
eval { $v .= pmver('DateTime::Format::Duration::XSD','any version') };
eval { $v .= pmver('DateTime::Format::Epoch','any version') };
eval { $v .= pmver('DateTime::Format::Epoch::ActiveDirectory','any version') };
eval { $v .= pmver('DateTime::Format::Epoch::MacOS','any version') };
eval { $v .= pmver('DateTime::Format::Epoch::Unix','any version') };
eval { $v .= pmver('DateTime::Format::Excel','any version') };
eval { $v .= pmver('DateTime::Format::Flexible','any version') };
eval { $v .= pmver('DateTime::Format::HTTP','any version') };
eval { $v .= pmver('DateTime::Format::Human','any version') };
eval { $v .= pmver('DateTime::Format::Human::Duration','any version') };
eval { $v .= pmver('DateTime::Format::ISO8601','any version') };
eval { $v .= pmver('DateTime::Format::MSSQL','any version') };
eval { $v .= pmver('DateTime::Format::MySQL','any version') };
eval { $v .= pmver('DateTime::Format::Natural','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Calc','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Compat','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Duration','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Duration::Checks','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Expand','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Extract','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Formatted','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Helpers','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Lang::Base','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Lang::EN','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Rewrite','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Test','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Utils','any version') };
eval { $v .= pmver('DateTime::Format::Natural::Wrappers','any version') };
eval { $v .= pmver('DateTime::Format::Oracle','any version') };
eval { $v .= pmver('DateTime::Format::Pg','any version') };
eval { $v .= pmver('DateTime::Format::RFC3339','any version') };
eval { $v .= pmver('DateTime::Format::RFC3501','any version') };
eval { $v .= pmver('DateTime::Format::RSS','any version') };
eval { $v .= pmver('DateTime::Format::Roman','any version') };
eval { $v .= pmver('DateTime::Format::SQLite','any version') };
eval { $v .= pmver('DateTime::Format::Strptime','any version') };
eval { $v .= pmver('DateTime::Format::Sybase','any version') };
eval { $v .= pmver('DateTime::Format::WindowsFileTime','any version') };
eval { $v .= pmver('DateTime::Format::XSD','any version') };
eval { $v .= pmver('Devel::Cover','any version') };
eval { $v .= pmver('Devel::NYTProf','any version') };
eval { $v .= pmver('Devel::REPL','any version') };
eval { $v .= pmver('Devel::REPL::Plugin::DataPrinter','any version') };
eval { $v .= pmver('Dist::Zilla','any version') };
eval { $v .= pmver('Dist::Zilla::App::Command::cover','any version') };
eval { $v .= pmver('Dist::Zilla::App::Command::perltidy','any version') };
eval { $v .= pmver('Dist::Zilla::App::Command::shell','any version') };
eval { $v .= pmver('Dist::Zilla::PluginBundle::Author::LESPEA','1.005001') };
eval { $v .= pmver('Dist::Zilla::Shell','any version') };
eval { $v .= pmver('EV','any version') };
eval { $v .= pmver('Encode','any version') };
eval { $v .= pmver('Event','any version') };
eval { $v .= pmver('Excel::Writer::XLSX','any version') };
eval { $v .= pmver('Exporter::Easy','any version') };
eval { $v .= pmver('File::HomeDir','any version') };
eval { $v .= pmver('File::Next','any version') };
eval { $v .= pmver('File::ShareDir','any version') };
eval { $v .= pmver('File::Slurp','any version') };
eval { $v .= pmver('File::Spec','any version') };
eval { $v .= pmver('Getopt::Long::Descriptive','any version') };
eval { $v .= pmver('Guard','any version') };
eval { $v .= pmver('HTML::Entities','any version') };
eval { $v .= pmver('HTML::Tree','any version') };
eval { $v .= pmver('HTML::TreeBuilder::XPath','any version') };
eval { $v .= pmver('IO::Handle','any version') };
eval { $v .= pmver('IO::Scalar','any version') };
eval { $v .= pmver('IPC::Open3','any version') };
eval { $v .= pmver('JSON','any version') };
eval { $v .= pmver('JSON::Any','any version') };
eval { $v .= pmver('JSON::XS','any version') };
eval { $v .= pmver('LWP','any version') };
eval { $v .= pmver('LWP::Protocol::https','any version') };
eval { $v .= pmver('List::AllUtils','any version') };
eval { $v .= pmver('List::Gen','any version') };
eval { $v .= pmver('List::MoreUtils','any version') };
eval { $v .= pmver('Locale::US','any version') };
eval { $v .= pmver('Math::Big','any version') };
eval { $v .= pmver('Math::Big::Factors','any version') };
eval { $v .= pmver('Modern::Perl','1.201205') };
eval { $v .= pmver('Module::Build','0.3601') };
eval { $v .= pmver('Module::Install','any version') };
eval { $v .= pmver('Module::Install::AuthorTests','any version') };
eval { $v .= pmver('Module::Install::ExtraTests','any version') };
eval { $v .= pmver('Module::Refresh','any version') };
eval { $v .= pmver('Module::Reload','any version') };
eval { $v .= pmver('Moose','any version') };
eval { $v .= pmver('Moose::Meta::Attribute::Native','any version') };
eval { $v .= pmver('MooseX::Aliases','any version') };
eval { $v .= pmver('MooseX::App','any version') };
eval { $v .= pmver('MooseX::App::Cmd','any version') };
eval { $v .= pmver('MooseX::Log::Log4perl','any version') };
eval { $v .= pmver('MooseX::Method::Signatures','any version') };
eval { $v .= pmver('MooseX::Singleton','any version') };
eval { $v .= pmver('MooseX::StrictConstructor','any version') };
eval { $v .= pmver('MooseX::Types','any version') };
eval { $v .= pmver('MooseX::Types::Common','any version') };
eval { $v .= pmver('MooseX::Types::Common::Numeric','any version') };
eval { $v .= pmver('MooseX::Types::Common::String','any version') };
eval { $v .= pmver('MooseX::Types::DateTime::ButMaintained','any version') };
eval { $v .= pmver('MooseX::Types::Email','any version') };
eval { $v .= pmver('MooseX::Types::IPv4','any version') };
eval { $v .= pmver('MooseX::Types::JSON','any version') };
eval { $v .= pmver('MooseX::Types::NetAddr::IP','any version') };
eval { $v .= pmver('MooseX::Types::PortNumber','any version') };
eval { $v .= pmver('MooseX::Types::Structured','any version') };
eval { $v .= pmver('MooseX::Types::URI','any version') };
eval { $v .= pmver('MooseX::Types::UUID','any version') };
eval { $v .= pmver('MouseX::Types','any version') };
eval { $v .= pmver('Net::CIDR::Lite','any version') };
eval { $v .= pmver('Net::DNS','any version') };
eval { $v .= pmver('Net::IP','any version') };
eval { $v .= pmver('Net::Netmask','any version') };
eval { $v .= pmver('Net::Ping','any version') };
eval { $v .= pmver('NetAddr::MAC','any version') };
eval { $v .= pmver('PPI::HTML','any version') };
eval { $v .= pmver('Perl::Critic','any version') };
eval { $v .= pmver('Perl::Tidy','any version') };
eval { $v .= pmver('Readonly::XS','any version') };
eval { $v .= pmver('Regexp::Common','any version') };
eval { $v .= pmver('Scalar::Util','any version') };
eval { $v .= pmver('Spreadsheet::ParseExcel','any version') };
eval { $v .= pmver('Spreadsheet::WriteExcel','any version') };
eval { $v .= pmver('Spreadsheet::XLSX','any version') };
eval { $v .= pmver('Task::Weaken','any version') };
eval { $v .= pmver('Template','any version') };
eval { $v .= pmver('Test::Fatal','any version') };
eval { $v .= pmver('Test::File','any version') };
eval { $v .= pmver('Test::LeakTrace','any version') };
eval { $v .= pmver('Test::Memory::Cycle','any version') };
eval { $v .= pmver('Test::More','0.88') };
eval { $v .= pmver('Test::Most','any version') };
eval { $v .= pmver('Test::Output','any version') };
eval { $v .= pmver('Test::Perl::Critic','any version') };
eval { $v .= pmver('Test::Pod','any version') };
eval { $v .= pmver('Test::Pod::Coverage','any version') };
eval { $v .= pmver('Test::Taint','any version') };
eval { $v .= pmver('Text::CSV_XS','any version') };
eval { $v .= pmver('Text::Trim','any version') };
eval { $v .= pmver('Try::Tiny','any version') };
eval { $v .= pmver('WWW::Mechanize','any version') };
eval { $v .= pmver('XML::LibXML','any version') };
eval { $v .= pmver('XML::SAX','any version') };
eval { $v .= pmver('XML::Simple','any version') };
eval { $v .= pmver('XML::Twig','any version') };
eval { $v .= pmver('YAML','any version') };
eval { $v .= pmver('YAML::Any','any version') };
eval { $v .= pmver('YAML::Syck','any version') };
eval { $v .= pmver('YAML::XS','any version') };
eval { $v .= pmver('autodie','any version') };
eval { $v .= pmver('autovivification','any version') };
eval { $v .= pmver('namespace::autoclean','any version') };
eval { $v .= pmver('strict','any version') };
eval { $v .= pmver('utf8','any version') };
eval { $v .= pmver('warnings','any version') };


# All done.
$v .= <<'EOT';

Thanks for using my code.  I hope it works for you.
If not, please try and include this output in the bug report.
That will help me reproduce the issue and solve your problem.

EOT

diag($v);
ok(1, "we really didn't test anything, just reporting data");
$success = 1;

# Work around another nasty module on CPAN. :/
no warnings 'once';
$Template::Test::NO_FLUSH = 1;
exit 0;
