.class public final synthetic Lcom/miui/calendar/card/single/local/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

.field public final synthetic b:I

.field public final synthetic c:Ls3/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/SummarySingleCard;ILs3/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/l;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iput p2, p0, Lcom/miui/calendar/card/single/local/l;->b:I

    iput-object p3, p0, Lcom/miui/calendar/card/single/local/l;->c:Ls3/a$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/l;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iget v1, p0, Lcom/miui/calendar/card/single/local/l;->b:I

    iget-object v2, p0, Lcom/miui/calendar/card/single/local/l;->c:Ls3/a$a;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->x(Lcom/miui/calendar/card/single/local/SummarySingleCard;ILs3/a$a;Landroid/view/View;)V

    return-void
.end method
