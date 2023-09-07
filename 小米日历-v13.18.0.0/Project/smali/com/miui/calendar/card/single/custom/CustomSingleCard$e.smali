.class Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;
.super Ljava/lang/Object;
.source "CustomSingleCard.java"

# interfaces
.implements Lcom/miui/calendar/view/DynamicLinearLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/CustomSingleCard;->g(Ls3/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 2
    .line 3
    iput p2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;->a:I

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
.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->r:Ljava/util/List;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;->actions:[Lcom/android/calendar/common/ModuleSchema;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->s(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 26
    .line 27
    iget v2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$e;->a:I

    .line 28
    .line 29
    iget-object v3, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->r:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;->actions:[Lcom/android/calendar/common/ModuleSchema;

    .line 38
    .line 39
    aget-object v1, v1, p1

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "card_button_clicked"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->k(Ljava/lang/String;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
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
