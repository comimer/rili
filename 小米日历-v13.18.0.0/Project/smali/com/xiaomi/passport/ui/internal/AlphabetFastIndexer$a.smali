.class Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->c(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v1, v2

    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$e;->c(FF)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$a;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 33
    .line 34
    .line 35
    return-void
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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
