.class Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;
.super Ljava/lang/Object;
.source "LotterySingleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/LotterySingleCard;->g(Ls3/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 2
    .line 3
    iput p2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->imageAction:Lcom/android/calendar/common/ModuleSchema;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->D(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 15
    .line 16
    iget v0, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;->a:I

    .line 17
    .line 18
    const-string v1, "card_change_clicked"

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->k(Ljava/lang/String;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
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
.end method
