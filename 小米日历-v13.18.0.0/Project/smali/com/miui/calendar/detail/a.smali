.class public final synthetic Lcom/miui/calendar/detail/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/detail/CardDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/detail/CardDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/a;->a:Lcom/miui/calendar/detail/CardDetailActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/detail/a;->a:Lcom/miui/calendar/detail/CardDetailActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/calendar/detail/CardDetailActivity;->c0(Lcom/miui/calendar/detail/CardDetailActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
