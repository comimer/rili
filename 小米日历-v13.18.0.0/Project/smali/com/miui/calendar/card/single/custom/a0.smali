.class public final synthetic Lcom/miui/calendar/card/single/custom/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/custom/ShiftSingleCard;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/a0;->a:Lcom/miui/calendar/card/single/custom/ShiftSingleCard;

    iput p2, p0, Lcom/miui/calendar/card/single/custom/a0;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/a0;->a:Lcom/miui/calendar/card/single/custom/ShiftSingleCard;

    iget v1, p0, Lcom/miui/calendar/card/single/custom/a0;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/custom/ShiftSingleCard;->F(Lcom/miui/calendar/card/single/custom/ShiftSingleCard;ILandroid/view/View;)V

    return-void
.end method
