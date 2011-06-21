use strict;
use warnings;
use Test::More 0.88;
# This is a relatively nice way to avoid Test::NoWarnings breaking our
# expectations by adding extra tests, without using no_plan.  It also helps
# avoid any other test module that feels introducing random tests, or even
# test plans, is a nice idea.
our $success = 0;
END { $success && done_testing; }

my $v = "\n";

eval {                     # no excuses!
    # report our Perl details
    my $want = '5.008';
    my $pv = ($^V || $]);
    $v .= "perl: $pv (wanted $want) on $^O from $^X\n\n";
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

eval { $v .= pmver('DBD::CSV','0.000000') };
eval { $v .= pmver('DBD::ODBC','0.000000') };
eval { $v .= pmver('DBI','0.000000') };
eval { $v .= pmver('DateTime::Format::DateParse','0.000000') };
eval { $v .= pmver('Dist::Zilla','0.000000') };
eval { $v .= pmver('Dist::Zilla::PluginBundle::Author::LESPEA','1.003000') };
eval { $v .= pmver('English','any version') };
eval { $v .= pmver('Exporter::Easy','0.000000') };
eval { $v .= pmver('File::Find','any version') };
eval { $v .= pmver('File::HomeDir','0.000000') };
eval { $v .= pmver('File::ShareDir','0.000000') };
eval { $v .= pmver('File::Slurp','0.000000') };
eval { $v .= pmver('File::Temp','any version') };
eval { $v .= pmver('Getopt::Long::Descriptive','0.000000') };
eval { $v .= pmver('HTML::Tree','0.000000') };
eval { $v .= pmver('HTML::TreeBuilder::XPath','0.000000') };
eval { $v .= pmver('JSON','0.000000') };
eval { $v .= pmver('JSON::Any','0.000000') };
eval { $v .= pmver('JSON::XS','0.000000') };
eval { $v .= pmver('List::MoreUtils','0.000000') };
eval { $v .= pmver('Math::Big','0.000000') };
eval { $v .= pmver('Math::Big::Factors','0.000000') };
eval { $v .= pmver('Module::Build','0.3601') };
eval { $v .= pmver('Module::Install','0.000000') };
eval { $v .= pmver('Module::Install::AuthorTests','0.000000') };
eval { $v .= pmver('Module::Install::ExtraTests','0.000000') };
eval { $v .= pmver('Module::Starter','0.000000') };
eval { $v .= pmver('Moose','0.000000') };
eval { $v .= pmver('MooseX::App::Cmd','0.000000') };
eval { $v .= pmver('MooseX::Method::Signatures','0.000000') };
eval { $v .= pmver('MooseX::Types::Common','0.000000') };
eval { $v .= pmver('MooseX::Types::DateTimeX','0.000000') };
eval { $v .= pmver('MooseX::Types::Structured','0.000000') };
eval { $v .= pmver('Net::CIDR::Lite','0.000000') };
eval { $v .= pmver('Net::DNS','0.000000') };
eval { $v .= pmver('Net::IP','0.000000') };
eval { $v .= pmver('Net::Netmask','0.000000') };
eval { $v .= pmver('Net::Ping','0.000000') };
eval { $v .= pmver('Perl::Critic','0.000000') };
eval { $v .= pmver('Readonly::XS','0.000000') };
eval { $v .= pmver('Regexp::Common','0.000000') };
eval { $v .= pmver('Spreadsheet::ParseExcel','0.000000') };
eval { $v .= pmver('Spreadsheet::Read','0.000000') };
eval { $v .= pmver('Spreadsheet::WriteExcel','0.000000') };
eval { $v .= pmver('Test::More','0.88') };
eval { $v .= pmver('Test::Most','0.000000') };
eval { $v .= pmver('Test::Perl::Critic','0.000000') };
eval { $v .= pmver('Test::Pod','0.000000') };
eval { $v .= pmver('Test::Pod::Coverage','0.000000') };
eval { $v .= pmver('Text::CSV_XS','0.000000') };
eval { $v .= pmver('Try::Tiny','0.000000') };
eval { $v .= pmver('YAML','0.000000') };
eval { $v .= pmver('YAML::Any','0.000000') };
eval { $v .= pmver('YAML::Syck','0.000000') };
eval { $v .= pmver('YAML::XS','0.000000') };
eval { $v .= pmver('autodie','0.000000') };
eval { $v .= pmver('namespace::autoclean','0.000000') };
eval { $v .= pmver('utf8','any version') };



# All done.
$v .= <<'EOT';

Thanks for using my code.  I hope it works for you.
If not, please try and include this output in the bug report.
That will help me reproduce the issue and solve you problem.

EOT

diag($v);
ok(1, "we really didn't test anything, just reporting data");
$success = 1;

# Work around another nasty module on CPAN. :/
no warnings 'once';
$Template::Test::NO_FLUSH = 1;
exit 0;
