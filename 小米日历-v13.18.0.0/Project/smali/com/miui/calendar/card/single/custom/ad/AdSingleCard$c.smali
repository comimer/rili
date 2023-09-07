.class Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;
.super Ljava/lang/Object;
.source "AdSingleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->g(Ls3/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;

.field final synthetic b:I

.field final synthetic c:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->c:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->a:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;

    .line 4
    .line 5
    iput p3, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "Cal:D:AdSingleCard"

    .line 2
    .line 3
    const-string v0, "adViewHolder.closeView onClick"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->c:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 9
    .line 10
    iget v0, p1, Lcom/miui/calendar/card/Card;->c:I

    .line 11
    .line 12
    const/16 v1, 0x44

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "calendar_appdownloadadcard"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "calendar_infoflowcard"

    .line 20
    .line 21
    :goto_0
    invoke-static {p1}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->J(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c$a;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->c:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/miui/calendar/ad/AdSchema;->ex:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v1, v0, v2}, Lcom/miui/calendar/ad/AdSchema;->onAdItemClosed(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->c:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 43
    .line 44
    iget v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;->b:I

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->K(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
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
