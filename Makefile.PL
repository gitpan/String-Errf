
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "a simple sprintf-like dialect",
  "AUTHOR" => "Ricardo Signes <rjbs\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "String-Errf",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "String::Errf",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Params::Util" => 0,
    "Scalar::Util" => 0,
    "String::Formatter" => "0.102081",
    "Sub::Exporter" => 0,
    "Time::Piece" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Date::Format" => 0,
    "JSON" => 2,
    "Test::More" => "0.96",
    "autodie" => 0
  },
  "VERSION" => "0.007",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Date::Format" => 0,
  "JSON" => 2,
  "Params::Util" => 0,
  "Scalar::Util" => 0,
  "String::Formatter" => "0.102081",
  "Sub::Exporter" => 0,
  "Test::More" => "0.96",
  "Time::Piece" => 0,
  "autodie" => 0,
  "parent" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



