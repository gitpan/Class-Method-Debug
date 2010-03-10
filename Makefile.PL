
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Class::Method::Debug',
                       'DISTNAME' => 'Class-Method-Debug',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'trace who is calling accessors',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100690',
                       'PREREQ_PM' => {
                                        'Test::More' => '0',
                                        'English' => '0',
                                        'Devel::StackTrace' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Exporter' => '0',
                                        'Class::Method::Modifiers' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



