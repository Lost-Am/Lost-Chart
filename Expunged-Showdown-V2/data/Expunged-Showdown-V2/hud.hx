import Main;
import openfl.text.TextFormat;
import haxe.ds.StringMap;

// Solo mantenemos la configuración para comic.ttf
var settings:StringMap = [
	"font" => "comic.ttf" 
];

function onCreatePost() {
    // 1. CONFIGURAR FPS (Lo único que queremos que cambie)
    if (Main.fpsVar != null) {
        // Usamos comic.ttf, tamaño 15 y negrita (true)
        Main.fpsVar.defaultTextFormat = new TextFormat(Paths.font('comic.ttf'), 15, 0xFFFFFF, true);
        Main.fpsVar.setTextFormat(Main.fpsVar.defaultTextFormat);
    }

    // 2. NO USAR EMPTY.PNG NI OTRAS IMÁGENES
    // Al eliminar todas las funciones de "loadGraphic", el motor ya no buscará
    // archivos inexistentes y usará el HUD original por defecto.
    
    return;
}

function onDestroy() {
    // Restaurar los FPS originales al salir de la canción
    if (Main.fpsVar != null) {
        Main.fpsVar.defaultTextFormat = new TextFormat("_sans", 14, 0xFFFFFF, false);
        Main.fpsVar.setTextFormat(Main.fpsVar.defaultTextFormat);
    }
}