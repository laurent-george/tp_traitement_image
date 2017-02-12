 conda install -c menpo opencv3=3.2.0 

In [1]: import cv2      
                        
In [2]: camera = cv2.VideoCapture(camera_port)
---------------------------------------------------------------------------
NameError                                 Traceback (most recent call last)
<ipython-input-2-89620ce4098d> in <module>()
----> 1 camera = cv2.VideoCapture(camera_port)
                               
NameError: name 'camera_port' is not defined                               
                                                                           
In [3]: camera_port = 0                     
                               
In [4]: camera = cv2.VideoCapture(camera_port)
                                                        
In [5]: retval, im = camera.read()
Corrupt JPEG data: 2 extraneous bytes before marker 0xd6
                        
In [6]: im              



conda install -c menpo imageio

# peut etre installer d'autre truc sympa du projet menpo (cf site web..)

# pour la détection de visage, peut être utiliser des images/photos de series .. genre breaking bad dans menpo.. ou un truc genre Viking/Better Call Saul/autre ?

