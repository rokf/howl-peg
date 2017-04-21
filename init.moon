
mode_reg =
  name: 'peg'
  extensions: 'peg'
  create: bundle_load('peg_mode')

howl.mode.register(mode_reg)

unload = -> howl.mode.unregister 'peg'

return {
  info:
    author: 'Rok Fajfar',
    description: 'PEG notation bundle',
    license: 'MIT',
  :unload
}
