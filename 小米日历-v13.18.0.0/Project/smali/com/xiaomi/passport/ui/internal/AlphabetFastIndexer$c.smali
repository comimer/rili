.class Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$c;
.super Landroid/os/Handler;
.source "AlphabetFastIndexer.java"


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
    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$c;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$c;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->e(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer$c;->a:Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->e(Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;)Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
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
.end method
