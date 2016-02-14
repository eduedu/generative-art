import processing.opengl.*


IntersectionsAlt i;
void setup()
{
    int w = Math.floor(window.innerWidth);
    int h = Math.floor(window.innerHeight);
    size(w, h, OPENGL);
    hint(ENABLE_OPENGL_4X_SMOOTH);
    background(50);
    frameRate(60);
    // i = new IntersectionsAlt(10);
    i = new IntersectionsAlt(width*height/(100*100)*2.5);
    // noLoop();
}

void draw(){  
    i.update();
    i.draw();
}

void mousePressed(){
    i.mousePressed();
}

void mouseDragged() {
    i.mouseDragged();
}


void mouseReleased() {
    i.mouseReleased();
}

void keyPressed(){
    if(keyCode == UP){
        i.rotZ(10);
    }
    else if(keyCode == DOWN){
        i.rotZ(-10);
    }
}