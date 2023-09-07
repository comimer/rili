.class public final synthetic Lcom/miui/calendar/card/single/custom/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/custom/FortuneSingleCard;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/custom/FortuneSingleCard;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/j;->a:Lcom/miui/calendar/card/single/custom/FortuneSingleCard;

    iput p2, p0, Lcom/miui/calendar/card/single/custom/j;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/j;->a:Lcom/miui/calendar/card/single/custom/FortuneSingleCard;

    iget v1, p0, Lcom/miui/calendar/card/single/custom/j;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/custom/FortuneSingleCard;->E(Lcom/miui/calendar/card/single/custom/FortuneSingleCard;ILandroid/view/View;)V

    return-void
.end method
