.class public Lcom/google/android/material/slider/Slider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/Slider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/Slider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/Slider;",
        "Lcom/google/android/material/slider/Slider$OnChangeListener;",
        "Lcom/google/android/material/slider/Slider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    new-array p3, p3, [I

    const v0, 0x1010024

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearOnChangeListeners()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getHaloRadius()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getLabelBehavior()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getStepSize()F
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getStepSize()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getThumbElevation()F
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getThumbRadius()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTrackHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTrackSidePadding()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getTrackWidth()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Float;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getValueFrom()F
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic getValueTo()F
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setHaloRadius(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/BaseSlider$LabelFormatter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/BaseSlider$LabelFormatter;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setStepSize(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setThumbElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setThumbRadius(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTrackHeight(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setValue(F)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Float;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setValueFrom(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public bridge synthetic setValueTo(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
