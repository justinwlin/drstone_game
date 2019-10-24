/// @description When the object collides with an item
// You can write your code in this editor

itemType = other.id.itemType
global.storage[? itemType] += 1
ds_queue_enqueue(global.PICKED_UP_ITEMS, itemType)
instance_destroy(other.id)