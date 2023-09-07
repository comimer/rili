.class public final synthetic Lcom/miui/calendar/card/single/local/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/c;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/a;->a:Lcom/miui/calendar/card/single/local/c;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/a;->a:Lcom/miui/calendar/card/single/local/c;

    invoke-static {v0, p1, p2}, Lcom/miui/calendar/card/single/local/c;->v(Lcom/miui/calendar/card/single/local/c;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
