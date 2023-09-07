.class Lcom/android/calendar/cards/x1$a;
.super Ljava/lang/Object;
.source "SummaryCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/cards/x1;->m(Lcom/android/calendar/cards/x1$c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/calendar/cards/x1$c;

.field final synthetic c:Lcom/android/calendar/cards/x1;


# direct methods
.method constructor <init>(Lcom/android/calendar/cards/x1;Landroid/content/Context;Lcom/android/calendar/cards/x1$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/x1$a;->c:Lcom/android/calendar/cards/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/cards/x1$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/calendar/cards/x1$a;->b:Lcom/android/calendar/cards/x1$c;

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
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/calendar/cards/x1$a;->c:Lcom/android/calendar/cards/x1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/cards/x1;->j(Lcom/android/calendar/cards/x1;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/cards/x1$a;->c:Lcom/android/calendar/cards/x1;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/calendar/cards/x1;->j(Lcom/android/calendar/cards/x1;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/calendar/cards/x1$a;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/miui/calendar/card/schema/TextChainSchema;->onClick(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/cards/x1$a;->b:Lcom/android/calendar/cards/x1$c;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    iget-object p1, p0, Lcom/android/calendar/cards/x1$a;->c:Lcom/android/calendar/cards/x1;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/calendar/cards/x1;->j(Lcom/android/calendar/cards/x1;)Lcom/miui/calendar/card/schema/TextChainSchema;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v3, p1, Lcom/miui/calendar/card/schema/TextChainSchema;->title:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const-string v0, "card_text_chain_clicked"

    .line 37
    .line 38
    const-string v5, "summary_card"

    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/cards/CardHelper;->o(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
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
