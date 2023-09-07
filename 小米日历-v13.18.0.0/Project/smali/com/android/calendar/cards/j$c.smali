.class Lcom/android/calendar/cards/j$c;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "AdCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/cards/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/cards/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/cards/j$c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/calendar/cards/j$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;Lcom/android/calendar/cards/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/j$c;-><init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V

    return-void
.end method

.method public static synthetic n0(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/cards/j$c;->o0(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V

    return-void
.end method

.method private static synthetic o0(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/android/calendar/cards/j;->m(Lcom/android/calendar/cards/j;)Lcom/android/calendar/cards/j$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/android/calendar/cards/j$d;->a()V

    .line 6
    .line 7
    .line 8
    new-instance v6, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v6}, Lcom/android/calendar/cards/j;->l(Lcom/android/calendar/cards/j;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v2, "card_close_clicked"

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v1, p0

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    return-void
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


# virtual methods
.method public onFinished(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdItemClosed:onFinished() resultCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:AdCard"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/cards/j$c;->a:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/calendar/cards/j;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/calendar/cards/j$c;->b:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/calendar/cards/j$b;

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    if-eq p1, v2, :cond_1

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, v1, Lcom/android/calendar/cards/j$b;->m:Landroid/view/View;

    .line 48
    .line 49
    new-instance v2, Lcom/android/calendar/cards/k;

    .line 50
    .line 51
    invoke-direct {v2, v0, v1}, Lcom/android/calendar/cards/k;-><init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
