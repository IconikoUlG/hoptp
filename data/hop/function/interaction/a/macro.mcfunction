tag @a remove ulg.t72
$tag @a[nbt={UUID:$(player)},distance=..10] add ulg.t72

data modify storage ulg:hoptp t.SelectedItem set from entity @a[tag=ulg.t72,limit=1] SelectedItem
tag @a remove ulg.t72

function hop:interaction/a/try_destroy