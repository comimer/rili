.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

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


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$600(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 8
    .line 9
    invoke-static {v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$700(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-static {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$502(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Z)Z

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
