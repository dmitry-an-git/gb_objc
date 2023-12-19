//
//  main.m
//  task01
//
//  Created by Dmitry An on 19/12/2023.
//

#import <Foundation/Foundation.h>

void solveQuadraticEquation(double a, double b, double c) {
    double discriminant = b * b - 4 * a * c;
    if (discriminant > 0) {
        double discriminantSquareRoot = sqrt(discriminant);
        double root1 = (-b + discriminantSquareRoot) / (2 * a);
        double root2 = (-b - discriminantSquareRoot) / (2 * a);
        NSLog(@"The equation (%f)x^2+(%f)x+(%f) has two roots: x0 = %f, x1 = %f", a, b, c, root1, root2);
    } else if (discriminant == 0) {
        NSLog(@"The equation (%f)x^2+(%f)x+(%f) has a single root: x0 = %f", a, b, c, -b / (2 * a));
    } else {
        NSLog(@"The equation (%f)x^2+(%f)x+(%f) has no real roots", a, b, c);
        return;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Решить квадратные уравнения:
//        x^2 – 8x + 12 = 0,
//        12x^2 – 4x + 2 = 0,
//        x^2 – 100x - 2 = 0
//        (заменять константы в коде).
        
        solveQuadraticEquation(1, -8, 12);
        solveQuadraticEquation(12, -4, 2);
        solveQuadraticEquation(1, -100, -2);
        
//        solveQuadraticEquation(1, 0, 1); // no roots
//        solveQuadraticEquation(1, 0, -1); // +1 and -1
//        solveQuadraticEquation(1, -4, 4); // single root
        
    }
    return 0;
}
