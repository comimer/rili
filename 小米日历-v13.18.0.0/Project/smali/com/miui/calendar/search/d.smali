.class public final synthetic Lcom/miui/calendar/search/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/search/f;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/search/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/search/d;->a:Lcom/miui/calendar/search/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/search/d;->a:Lcom/miui/calendar/search/f;

    invoke-static {v0, p1, p2}, Lcom/miui/calendar/search/f;->a(Lcom/miui/calendar/search/f;Landroid/content/DialogInterface;I)V

    return-void
.end method
