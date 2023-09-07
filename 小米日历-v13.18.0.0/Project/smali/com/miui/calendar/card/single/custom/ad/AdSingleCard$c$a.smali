.class Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "AdSingleCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a;->a:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

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
.method public onFinished(I)V
    .locals 2

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
    const-string v1, "Cal:D:AdSingleCard"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a;->a:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->a:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->x:Landroid/view/View;

    .line 32
    .line 33
    new-instance v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a$a;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
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
