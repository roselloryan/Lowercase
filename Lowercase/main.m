//
//  main.m
//  Lowercase


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *testString = @"V:SzPgYuNP^6^pxMWR4A+Y'%&#xh%H4hJNc9,x@";
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        NSInteger i = 0;
        
        for (i = 0; i < testString.length; i++) {
            char singleCharacter = [testString characterAtIndex:i];
            
            if (isalpha(singleCharacter)) {
                if (isupper(singleCharacter)) {
                    singleCharacter = tolower(singleCharacter);
                }
            }
            
            [solutionString appendString:[NSString stringWithFormat:@"%c", singleCharacter]];
        }
        
        NSLog(@"\nSolution string: %@\n", solutionString);
        
    }
    return 0;
}
