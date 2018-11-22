#ifndef IMAGE_PROCESSING_H
#define IMAGE_PROCESSING_H

#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <algorithm>
#include <string>
#include <vector>

using namespace cv;
using namespace std;

Mat ImageProcessing(Mat input, bool isBlue);
void IntensityThresholding(Mat inputHSVImg, Mat& outputImg, int thres);
void ShowIntensity(Mat raw);
void Dilation(Mat &raw, int dimension);

#endif
