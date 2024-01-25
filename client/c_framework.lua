if Config.Framework == 'esx' then -- check config
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Framework == 'qb' then -- check config
    QBCore = exports['qb-core']:GetCoreObject()
end