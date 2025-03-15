using Godot;

public abstract partial class Ability : Node3D
{
    [Export] public float Damage { get; private set; }
    [Export] protected AnimationPlayer playerNode;
}