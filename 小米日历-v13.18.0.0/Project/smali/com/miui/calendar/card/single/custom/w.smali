.class public final synthetic Lcom/miui/calendar/card/single/custom/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/custom/y;

.field public final synthetic b:Ls3/a$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/custom/y;Ls3/a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/w;->a:Lcom/miui/calendar/card/single/custom/y;

    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/w;->b:Ls3/a$a;

    iput p3, p0, Lcom/miui/calendar/card/single/custom/w;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/w;->a:Lcom/miui/calendar/card/single/custom/y;

    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/w;->b:Ls3/a$a;

    iget v2, p0, Lcom/miui/calendar/card/single/custom/w;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/custom/y;->E(Lcom/miui/calendar/card/single/custom/y;Ls3/a$a;ILandroid/view/View;)V

    return-void
.end method
