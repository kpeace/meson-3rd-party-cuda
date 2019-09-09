project('hello-3rd-party-cuda', 'cpp', 'cuda')

# get conan dependencies
run_command('conan', 'install', '--install-folder', meson.build_root(), meson.source_root(), check: true)

fmt_dep = dependency('fmt')

executable('hello-3rd-party-cuda', 'hello.cu',
    dependencies : [fmt_dep],
)
