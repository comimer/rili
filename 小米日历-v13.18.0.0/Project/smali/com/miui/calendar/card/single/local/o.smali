.class public final synthetic Lcom/miui/calendar/card/single/local/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/SummarySingleCard;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/o;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iput p2, p0, Lcom/miui/calendar/card/single/local/o;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/o;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iget v1, p0, Lcom/miui/calendar/card/single/local/o;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->v(Lcom/miui/calendar/card/single/local/SummarySingleCard;ILandroid/view/View;)V

    return-void
.end method
