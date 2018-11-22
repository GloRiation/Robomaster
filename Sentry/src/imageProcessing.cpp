#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/highgui/highgui_c.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/features2d.hpp> // region detection
#include <time.h>
#include <opencv2/core/types_c.h> // To use CvScalar
#include <stdio.h>
#include <iostream>
#include <valarray> // for faster and simple vector math
#include <cmath> // atan calculation (seems valarray already includes it.)
#include <thread> // Multi threading
#include <unistd.h> // linux read and write
#include <fcntl.h> // linux file input, output
#include <signal.h>

using namespace cv;
using namespace std;

Mat ImageProcessing(Mat input, bool isBlue);
void IntensityThresholding(Mat inputHSVImg, Mat& outputImg, int thres);
void ShowIntensity(Mat raw);
void Dilation(Mat &raw, int dimension);

Mat ImageProcessing(Mat input, bool isBlue){
    Mat HSVImg, GrayImg, OutputImg;
    vector<Mat> SplitedImg;

   // ShowIntensity(input);    
    split(input, SplitedImg);
    if (isBlue){
        subtract(SplitedImg[0], SplitedImg[2], OutputImg);
    }
    else{
        subtract(SplitedImg[2], SplitedImg[0], OutputImg);
    }
    threshold(OutputImg, OutputImg, 150, 255, THRESH_BINARY);
    cvtColor(input, input, CV_BGR2GRAY);
    threshold(input, input, 150, 255, THRESH_BINARY);
    //imshow("input with thresholded", input);
    imshow("Blue", OutputImg);
    Dilation(OutputImg, 11);
    imshow("Blue with dilation", OutputImg);
    input = input & OutputImg;
    return input;
}

void IntensityThresholding(Mat inputHSVImg, Mat& outputImg, int thres){
    uchar* p;
	for (int i = 0; i <= inputHSVImg.rows - 1; ++i) // Careful it's <= to include EndRow
	{
		p = outputImg.ptr<uchar>(i);
		for (int j = 0; j < inputHSVImg.cols; ++j)
		{
			p[j] = 255 * (p[j] > thres);
		}
	}

}

void ShowIntensity(Mat raw){
    Mat HSVImg, GrayImg;
    cvtColor(raw, HSVImg, CV_BGR2HSV);
    cvtColor(raw, GrayImg, CV_BGR2GRAY);
    uchar* HSVDataPtr = HSVImg.data;
    uchar* GrayDataPtr = GrayImg.data;
    for (int i = 0; i < raw.rows; i++){
        for (int j = 0; j < raw.cols; j++){
            const int Hi = i*raw.cols*3 + j*3, Gi = i*raw.cols + j;
            GrayDataPtr[Gi] = HSVDataPtr[Hi + 2];
        }
    }
    imshow("Intensity", GrayImg);
}

void Dilation(Mat &raw, int dimension){
    uchar** p = new uchar*[raw.rows];
    for (int i = 0; i < raw.rows; ++i){
        p[i] = new uchar[raw.cols];
    }
    for (int i = 0; i < raw.rows; ++i){
        p[i] = raw.ptr<uchar>(i);
    }
    int ext = (dimension - 1) /2;
    for (int i = ext; i < raw.rows - ext; i++){
        for (int j = ext; j < raw.cols - ext; j++){
            if (p[i][j] == 255){
                for (int k = 0; k < dimension; k++){
                    for (int h = 0; h < dimension; h++){
                        p[i-ext+k][j-ext+h] = 255;
                     }
                 }
            }
        }
    }

}
