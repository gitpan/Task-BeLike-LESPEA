
use strict;
use warnings;

BEGIN { require 5.008; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Modules that LESPEA uses on a daily basis',
  'AUTHOR' => 'Adam Lesperance <lespea@gmail.com>',
  'BUILD_REQUIRES' => {
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'ExtUtils::MakeMaker' => '6.31',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Task-BeLike-LESPEA',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::LESPEA',
  'PREREQ_PM' => {
    'DBD::CSV' => '0',
    'DBD::ODBC' => '0',
    'DBI' => '0',
    'DateTime::Format::DateParse' => '0',
    'Devel::NYTProf' => '0',
    'Dist::Zilla' => '0',
    'Dist::Zilla::Plugin::Authority' => '0',
    'Dist::Zilla::Plugin::Bugtracker' => '0',
    'Dist::Zilla::Plugin::CheckChangeLog' => '0',
    'Dist::Zilla::Plugin::CheckChangesHasContent' => '0',
    'Dist::Zilla::Plugin::CheckChangesTests' => '0',
    'Dist::Zilla::Plugin::CompileTests' => '0',
    'Dist::Zilla::Plugin::CriticTests' => '0',
    'Dist::Zilla::Plugin::HasVersionTests' => '0',
    'Dist::Zilla::Plugin::Homepage' => '0',
    'Dist::Zilla::Plugin::InstallGuide' => '0',
    'Dist::Zilla::Plugin::KwaliteeTests' => '0',
    'Dist::Zilla::Plugin::MinimumPerl' => '0',
    'Dist::Zilla::Plugin::MinimumVersionTests' => '0',
    'Dist::Zilla::Plugin::PodWeaver' => '0',
    'Dist::Zilla::Plugin::PortabilityTests' => '0',
    'Dist::Zilla::Plugin::Prepender' => '0',
    'Dist::Zilla::Plugin::ReadmeFromPod' => '0',
    'Dist::Zilla::Plugin::ReportVersions' => '0',
    'Dist::Zilla::Plugin::Repository' => '0',
    'Dist::Zilla::Plugin::SynopsisTests' => '0',
    'Dist::Zilla::Plugin::UnusedVarsTests' => '0',
    'Dist::Zilla::PluginBundle::Author::LESPEA' => '0',
    'Exporter::Easy' => '0',
    'File::HomeDir' => '0',
    'File::ShareDir' => '0',
    'File::Slurp' => '0',
    'Getopt::Long::Descriptive' => '0',
    'HTML::Tree' => '0',
    'HTML::TreeBuilder::XPath' => '0',
    'JSON' => '0',
    'JSON::Any' => '0',
    'JSON::XS' => '0',
    'List::MoreUtils' => '0',
    'Math::Big' => '0',
    'Math::Big::Factors' => '0',
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Install' => '0',
    'Module::Install::AuthorTests' => '0',
    'Module::Install::ExtraTests' => '0',
    'Module::Starter' => '0',
    'Moose' => '0',
    'MooseX::App::Cmd' => '0',
    'MooseX::Method::Signatures' => '0',
    'MooseX::Types::Common' => '0',
    'MooseX::Types::DateTimeX' => '0',
    'MooseX::Types::Structured' => '0',
    'Net::CIDR::Lite' => '0',
    'Net::DNS' => '0',
    'Net::IP' => '0',
    'Net::Netmask' => '0',
    'Net::Ping' => '0',
    'Perl::Critic' => '0',
    'Perl::MinimumVersion' => '0',
    'Perl::PrereqScanner' => '0',
    'Pod::Coverage::TrustPod' => '0',
    'Pod::Elemental::Transformer::List' => '0',
    'Pod::Weaver' => '0',
    'Pod::Weaver::Section::Support' => '0',
    'Readonly::XS' => '0',
    'Regexp::Common' => '0',
    'Spreadsheet::ParseExcel' => '0',
    'Spreadsheet::Read' => '0',
    'Spreadsheet::WriteExcel' => '0',
    'Test::CPAN::Meta' => '0',
    'Test::Most' => '0',
    'Test::Perl::Critic' => '0',
    'Test::Pod' => '0',
    'Test::Pod::Coverage' => '0',
    'Text::CSV_XS' => '0',
    'Try::Tiny' => '0',
    'YAML' => '0',
    'YAML::Any' => '0',
    'YAML::Syck' => '0',
    'YAML::XS' => '0',
    'autodie' => '0',
    'namespace::autoclean' => '0',
    'utf8' => '0'
  },
  'VERSION' => '2.000000',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



