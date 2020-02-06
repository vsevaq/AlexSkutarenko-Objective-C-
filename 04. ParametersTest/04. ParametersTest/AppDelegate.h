//
//  AppDelegate.h
//  4. ParametersTest
//
//  Created by MacBook Pro on 12/26/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VSObject;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//atomic - создается по умолчанию. Потоко независмый поток, который идет паралельно.
//atomic - медленее работает. Но если мы работает с потоками, лучше ее реализовывать
//nonatomic - значит что мы потоконезащищены, но мы пока работает в одном потоке
//readonly, readwrite.
@property (weak, nonatomic) VSObject* object;
//при работе с объектами, нужно использовать weak
//при работе с объектами, НИКОГДА не использовать assign
//strong - сильная ссылка указывает на объект, то этот объект не может быть уничтожен,
//пока существует на него хотя бы одна сильная ссылка.
//weak - слабая ссылка(не держит объект)
//assign - тоже самое что и weak, но если объект уничтожен, то при weak проперти = nill,
//а если объект уничтожен и на него стоит пропрти assign - то ничего с ним не будет и будет указывать на мусор
//copy -
//!!! - для объектов мы всегда устанавливаем weak ссылки
//!!! - assign никогда не использовать для объектов
//assign - для примитивных типов

@end

