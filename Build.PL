use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'File::CleanupTask',
    license             => 'perl',
    dist_author         => q{Savio Dimatteo <savio@lokku.com>},
    dist_version_from   => 'lib/File/CleanupTask.pm',
    configure_requires => { 
        'Module::Build' => 0.4 
    },
    build_requires => {
        'Test::More'          => 0.98,
        'Test::File'          => 1.33,
        'File::Temp'          => 0.20,
        'File::Touch'         => 0.08,
        'File::Find::Rule'    => 0.33,
        'File::Basename'      => 2.76,
        'File::Path'          => 2.07,
        'File::Spec'          => 3.29,
        'Config::Simple'      => 4.58,
        'Cwd'                 => 3.29,
        'Test::CheckManifest' => 0.9,
        'Test::Pod::Coverage' => 1.08,
        'Test::Pod'           => 1.22,
    },
    requires => {
        'perl'           => 5.006,
        'File::Path'     => 2.07,
        'File::Basename' => 2.76,
        'File::Spec'     => 3.29,
        'File::Find'     => 1.12,
        'File::Copy'     => 2.11,
        'IPC::Run3'      => 0.045,
        'Sort::Key'      => 1.28,
        'File::Which'    => 1.09,
        'Config::Simple' => 4.58,
        'Getopt::Long'   => 2.37,


    },
    add_to_cleanup      => [ 'File-CleanupTask-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
