package three;

typedef JSONMeta = {
	var geometries : haxe.DynamicAccess<BufferGeometryJSON>;
	var materials : haxe.DynamicAccess<MaterialJSON>;
	var textures : haxe.DynamicAccess<TextureJSON>;
	var images : haxe.DynamicAccess<SourceJSON>;
	var shapes : haxe.DynamicAccess<ShapeJSON>;
	var skeletons : haxe.DynamicAccess<SkeletonJSON>;
	var animations : haxe.DynamicAccess<AnimationClipJSON>;
	var nodes : haxe.DynamicAccess<Any>;
};