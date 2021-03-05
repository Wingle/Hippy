/*!
 * iOS SDK
 *
 * Tencent is pleased to support the open source community by making
 * Hippy available.
 *
 * Copyright (C) 2019 THL A29 Limited, a Tencent company.
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "HippyBaseListItemView.h"
#import "UIView+Hippy.h"

@implementation HippyBaseListItemView

- (void)hippySetFrame:(CGRect)frame {
    [super hippySetFrame:frame];
    self.frame = self.bounds;
}

- (void)viewAppearEvent {
    if (self.onAppear) {
        self.onAppear(@{});
    }
}

- (void)viewDisappearEvent {
    if (self.onDisappear) {
        self.onDisappear(@{});
    }
}

- (void)viewWillAppearEvent {
    if (self.onWillAppear) {
        self.onWillAppear(@{});
    }
}

- (void)viewWillDisappearEvent {
    if (self.onWillDisappear) {
        self.onWillDisappear(@{});
    }
}

- (void)cellAppearStateChanged:(CellAppearState)state {
    switch (state) {
        case CellWillAppearState:
            [self viewWillAppearEvent];
            break;
        case CellDidAppearState:
            [self viewAppearEvent];
            break;
        case CellWillDisappearState:
            [self viewWillDisappearEvent];
            break;
        case CellDidDisappearState:
            [self viewDisappearEvent];
            break;
        default:
            break;
    }
}

@end
