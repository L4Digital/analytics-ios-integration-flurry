//  OCMockito by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2016 Jonathan M. Reid. See LICENSE.txt
//  Contribution by David Hart

#import "MKTClassObjectMock.h"


@interface MKTClassObjectMock ()
@property (nonatomic, strong, readonly) Class mockedClass;
@end

@implementation MKTClassObjectMock

- (instancetype)initWithClass:(Class)aClass
{
    self = [super init];
    if (self)
        _mockedClass = aClass;
    return self;
}

- (NSString *)description
{
    return [@"mock class of " stringByAppendingString:NSStringFromClass(self.mockedClass)];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    return [self.mockedClass methodSignatureForSelector:aSelector];
}


#pragma mark NSObject protocol

- (BOOL)respondsToSelector:(SEL)aSelector
{
    return [self.mockedClass respondsToSelector:aSelector];
}

@end
