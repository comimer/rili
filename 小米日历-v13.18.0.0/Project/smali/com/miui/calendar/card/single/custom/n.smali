.class public final synthetic Lcom/miui/calendar/card/single/custom/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/miui/calendar/card/single/custom/HistorySingleCard;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/miui/calendar/card/single/custom/HistorySingleCard;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/n;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/n;->b:Lcom/miui/calendar/card/single/custom/HistorySingleCard;

    iput p3, p0, Lcom/miui/calendar/card/single/custom/n;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/n;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/n;->b:Lcom/miui/calendar/card/single/custom/HistorySingleCard;

    iget v2, p0, Lcom/miui/calendar/card/single/custom/n;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/custom/HistorySingleCard;->E(Ljava/util/List;Lcom/miui/calendar/card/single/custom/HistorySingleCard;ILandroid/view/View;)V

    return-void
.end method
