.class public final synthetic Lcom/miui/calendar/card/single/local/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/TodoSingleCard;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/TodoSingleCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/q;->a:Lcom/miui/calendar/card/single/local/TodoSingleCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/q;->a:Lcom/miui/calendar/card/single/local/TodoSingleCard;

    invoke-static {v0, p1}, Lcom/miui/calendar/card/single/local/TodoSingleCard;->u(Lcom/miui/calendar/card/single/local/TodoSingleCard;Landroid/view/View;)V

    return-void
.end method
