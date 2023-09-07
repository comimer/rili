.class public final synthetic Lcom/miui/calendar/card/single/custom/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/custom/u;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/custom/u;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/r;->a:Lcom/miui/calendar/card/single/custom/u;

    iput p2, p0, Lcom/miui/calendar/card/single/custom/r;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/r;->a:Lcom/miui/calendar/card/single/custom/u;

    iget v1, p0, Lcom/miui/calendar/card/single/custom/r;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/custom/u;->E(Lcom/miui/calendar/card/single/custom/u;ILandroid/view/View;)V

    return-void
.end method
