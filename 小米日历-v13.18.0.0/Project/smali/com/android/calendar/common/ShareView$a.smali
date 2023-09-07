.class Lcom/android/calendar/common/ShareView$a;
.super Landroid/view/ViewOutlineProvider;
.source "ShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/common/ShareView;->H(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/common/ShareView;


# direct methods
.method constructor <init>(Lcom/android/calendar/common/ShareView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/ShareView$a;->a:Lcom/android/calendar/common/ShareView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

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
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/calendar/common/ShareView$a;->a:Lcom/android/calendar/common/ShareView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/common/ShareView;->v(Lcom/android/calendar/common/ShareView;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object p1, p0, Lcom/android/calendar/common/ShareView$a;->a:Lcom/android/calendar/common/ShareView;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/common/ShareView;->v(Lcom/android/calendar/common/ShareView;)Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object p1, p0, Lcom/android/calendar/common/ShareView$a;->a:Lcom/android/calendar/common/ShareView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/calendar/common/ShareView;->v(Lcom/android/calendar/common/ShareView;)Landroid/widget/ImageView;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object p1, p0, Lcom/android/calendar/common/ShareView$a;->a:Lcom/android/calendar/common/ShareView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/calendar/common/ShareView;->v(Lcom/android/calendar/common/ShareView;)Landroid/widget/ImageView;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/high16 v5, 0x42480000    # 50.0f

    .line 42
    .line 43
    move-object v0, p2

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
