.class Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;
.super Ljava/lang/Object;
.source "CustomSingleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/CustomSingleCard;->g(Ls3/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;

.field final synthetic b:I

.field final synthetic c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard;Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->a:Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;

    .line 4
    .line 5
    iput p3, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->b:I

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
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->a:Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;->titleBanner:Lcom/android/calendar/common/ModuleSchema;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->p(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/ModuleSchema;->sendIntentForDeepLink(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 15
    .line 16
    iget v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$b;->b:I

    .line 17
    .line 18
    const-string v1, "card_banner_clicked"

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
