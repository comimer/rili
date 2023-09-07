.class Lcom/android/calendar/cards/x1$b;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SummaryCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/cards/x1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/cards/x1$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/calendar/cards/x1;Lcom/android/calendar/cards/x1$c;Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/cards/x1$b;->a:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/calendar/cards/x1$b;->b:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/calendar/cards/x1$b;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/cards/x1;Lcom/android/calendar/cards/x1$c;Landroid/content/Context;Lcom/android/calendar/cards/x1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/x1$b;-><init>(Lcom/android/calendar/cards/x1;Lcom/android/calendar/cards/x1$c;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic n0(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/x1$b;->o0(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    return-void
.end method

.method private static synthetic o0(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/calendar/cards/x1;->k(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method


# virtual methods
.method public onFinished(I)V
    .locals 4

    .line 1
    const-string v0, "Cal:D:SummaryCard"

    .line 2
    .line 3
    const-string v1, "onAdItemClosed:onFinished() resultCode=$resultCode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/cards/x1$b;->a:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/calendar/cards/x1;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/calendar/cards/x1$b;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/calendar/cards/x1$c;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/calendar/cards/x1$b;->c:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/Context;

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq p1, v3, :cond_1

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, v1, Lcom/android/calendar/cards/x1$c;->o:Landroid/widget/ImageButton;

    .line 41
    .line 42
    new-instance v3, Lcom/android/calendar/cards/y1;

    .line 43
    .line 44
    invoke-direct {v3, v0, v2, v1}, Lcom/android/calendar/cards/y1;-><init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
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
