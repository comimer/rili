.class public final synthetic Lcom/miui/calendar/card/single/local/m;
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

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/m;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iput p2, p0, Lcom/miui/calendar/card/single/local/m;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/m;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iget v1, p0, Lcom/miui/calendar/card/single/local/m;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->z(Lcom/miui/calendar/card/single/local/SummarySingleCard;ILandroid/view/View;)V

    return-void
.end method
