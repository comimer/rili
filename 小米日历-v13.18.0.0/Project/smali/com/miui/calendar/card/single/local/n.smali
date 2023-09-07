.class public final synthetic Lcom/miui/calendar/card/single/local/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ls3/a$a;


# direct methods
.method public synthetic constructor <init>(Ls3/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/n;->a:Ls3/a$a;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/n;->a:Ls3/a$a;

    invoke-static {v0, p1, p2}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->u(Ls3/a$a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
