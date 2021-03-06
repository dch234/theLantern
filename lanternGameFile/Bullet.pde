//The Bullet Class
//Creates a Bullet Object that the Player can shoot at Enemies
//Functions include Constructors, Mutators, Accessors, and Others
class Bullet {
    //Variables for the Bullet Object/Class
    float x;
    float y;
    int direction;
    boolean active;
    
    //The Bullet Constructor - Creates a Bullet Object
    //@param x is the x location of the top left corner of the Bullet
    //@param y is the y location of the top left corner of the Bullet
    //@param direction is which way the player is currently facing
    Bullet(float x, float y, int direction) {
        this.x = x;
        this.y = y;
        this.direction = direction;
        this.active = true;
        redrawBullet();
    }  
    
    //The moveY Function - Moves the Y coordinate of the Bulelt
    //@param distToMove is how far the bullet will move
    void moveY(float distToMove) {
        this.y += distToMove;    
    }
    
    //The moveX Function - Moves the X coordinate of the Bullet
    //@param distToMove is how far the bullet will move
    void moveX(float distToMove) {
        this.x += distToMove;    
    }
    
    //The redrawBullet Function - Redraws the Bullet Object
    void redrawBullet() {
        fill(#00FF00);
        rect(this.x, this.y, 2, 2);   
    }
    
    //The shootBullet Function - Moves the Bullet
    void shootBullet() {
        if (this.direction == 1) {
            moveY(-10.0);
        } else if (this.direction == 2) {
            moveX(-10.0);
        } else if (this.direction == 3) {
            moveY(10.0);
        } else {
            moveX(10.0);
        }
        redrawBullet();
    }
    
    //The checkActive Function - Sees if the Bullet is still on the map
    void checkActive() {
        if (this.x > 200 || this.x < 0 || this.y > 200 || this.y < 0) {
            this.active = false;
        }   
    }
    
    //The getActive Function - Says whether or not the bullet is active
    //@returns if the bullet is active
    boolean getActive() {
        return this.active;   
    }
}
//--- END OF Bullet CLASS ---//
