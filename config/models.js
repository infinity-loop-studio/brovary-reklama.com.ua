module.exports.models = {
  // schema: true,
  migrate: 'alter',
  attributes: {
    createdAt: {type: 'number', autoCreatedAt: true,},
    updatedAt: {type: 'number', autoUpdatedAt: true,},
    id: {type: 'number', autoIncrement: true,},
  },
  dataEncryptionKeys: {
    default: 'HBzc5oyM9nRwOuvPSzdsx2xYcQ/qPZUb2ybR4fYmolA='
  },
  cascadeOnDestroy: true
};
