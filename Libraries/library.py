import cv2
import numpy as np
from robot.api import logger
from robot.errors import ExecutionFailed

class library(object):
    
    ROBOT_LIBRARY_VERSION = 1.0
    
    def Find_Image(self, screen_img, template_img, output_img):
        
        img_rgb = cv2.imread(screen_img)
        img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
        template = cv2.imread(template_img, 0)
        w, h = template.shape[::-1]

        res = cv2.matchTemplate(img_gray,template,cv2.TM_CCOEFF_NORMED)
        threshold = 0.8
        loc = np.where( res >= threshold)
        for pt in zip(*loc[::-1]):
            cv2.rectangle(img_rgb, pt, (pt[0] + w, pt[1] + h), (0,0,255), 2)

            cv2.imwrite(output_img, img_rgb)

        if loc[0].any() and loc[1].any():
            logger.info("Template found", also_console=True)
        else:
            logger.error("Template not found")
            raise   ExecutionFailed("FAILED")
        