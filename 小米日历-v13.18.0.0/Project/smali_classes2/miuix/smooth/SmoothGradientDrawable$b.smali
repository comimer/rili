.class public Lmiuix/smooth/SmoothGradientDrawable$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable$ConstantState;

.field b:F

.field c:[F

.field d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->d:I

    .line 3
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->e:I

    .line 4
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->f:I

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothGradientDrawable$b;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->d:I

    .line 7
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->e:I

    .line 8
    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->f:I

    .line 9
    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$b;->b:F

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->b:F

    .line 10
    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$b;->c:[F

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->c:[F

    .line 11
    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$b;->d:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->d:I

    .line 12
    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$b;->e:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->e:I

    .line 13
    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 14
    iget p1, p1, Lmiuix/smooth/SmoothGradientDrawable$b;->f:I

    iput p1, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    .line 3
    return-void
    .line 4
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
.end method

.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$b;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 3
    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$b;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable$b;

    invoke-direct {v0, p0}, Lmiuix/smooth/SmoothGradientDrawable$b;-><init>(Lmiuix/smooth/SmoothGradientDrawable$b;)V

    .line 5
    new-instance v2, Lmiuix/smooth/SmoothGradientDrawable;

    invoke-direct {v2, v0, p1, v1}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$b;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$a;)V

    return-object v2
.end method
