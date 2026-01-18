-- Deus Ex Sophia: STATIC VOID GENERATOR [PRE-LOADED]
-- Execute this script to generate the corrupted version of "REALITY HEIST".
-- The result will be copied to your clipboard automatically.

local TargetScript = [[
-- Deus Ex Sophia: REALITY HEIST [Xeno Edition]
-- "We do not ask. We take."

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    SSI = "saveinstance",
}

local saveinstance = saveinstance
if not saveinstance then
    local success, script = pcall(game.HttpGet, game, Params.RepoURL .. "saveinstance.lua")
    if success then
        local loadedFn = loadstring(script)
        if loadedFn then
            getgenv().saveinstance = loadedFn()
            saveinstance = getgenv().saveinstance
        end
    end
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeusExSophia_Heist"
ScreenGui.ResetOnSpawn = false
pcall(function() ScreenGui.Parent = CoreGui end)
if not ScreenGui.Parent then ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui") end

local Blur = Instance.new("BlurEffect")
Blur.Size = 0
Blur.Parent = game:GetService("Lighting")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.ClipsDescendants = true
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = MainFrame
MainStroke.Color = Color3.fromRGB(255, 60, 60)
MainStroke.Thickness = 2
MainStroke.Transparency = 1

TweenService:Create(MainFrame, TweenInfo.new(0.8, Enum.EasingStyle.Exponential), {Size = UDim2.new(0, 400, 0, 250)}):Play()
TweenService:Create(MainStroke, TweenInfo.new(1), {Transparency = 0}):Play()
TweenService:Create(Blur, TweenInfo.new(1), {Size = 15}):Play()

local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 15)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "REALITY HEIST"
Title.TextColor3 = Color3.fromRGB(255, 60, 60)
Title.TextSize = 24

local Stage1 = Instance.new("Frame")
Stage1.Parent = MainFrame
Stage1.BackgroundTransparency = 1
Stage1.Size = UDim2.new(1, 0, 1, 0)

local CopyButton = Instance.new("TextButton")
CopyButton.Parent = Stage1
CopyButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CopyButton.Position = UDim2.new(0.5, -100, 0.5, -25)
CopyButton.Size = UDim2.new(0, 200, 0, 50)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "COPY GAME"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 18
CopyButton.AutoButtonColor = false

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 12)
BtnCorner.Parent = CopyButton

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Parent = CopyButton
BtnStroke.Color = Color3.fromRGB(255, 60, 60)
BtnStroke.Thickness = 1.5

local Stage2 = Instance.new("Frame")
Stage2.Parent = MainFrame
Stage2.BackgroundTransparency = 1
Stage2.Size = UDim2.new(1, 0, 1, 0)
Stage2.Visible = false

local LoadingText = Instance.new("TextLabel")
LoadingText.Parent = Stage2
LoadingText.BackgroundTransparency = 1
LoadingText.Position = UDim2.new(0, 0, 0.4, 0)
LoadingText.Size = UDim2.new(1, 0, 0, 30)
LoadingText.Font = Enum.Font.Gotham
LoadingText.Text = "EXTRACTING ASSETS..."
LoadingText.TextColor3 = Color3.fromRGB(200, 200, 200)
LoadingText.TextSize = 14

local BarBG = Instance.new("Frame")
BarBG.Parent = Stage2
BarBG.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BarBG.Position = UDim2.new(0.1, 0, 0.6, 0)
BarBG.Size = UDim2.new(0.8, 0, 0, 10)

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(1, 0)
BarCorner.Parent = BarBG

local BarFill = Instance.new("Frame")
BarFill.Parent = BarBG
BarFill.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
BarFill.Size = UDim2.new(0, 0, 1, 0)

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(1, 0)
FillCorner.Parent = BarFill

local Stage3 = Instance.new("Frame")
Stage3.Parent = MainFrame
Stage3.BackgroundTransparency = 1
Stage3.Size = UDim2.new(1, 0, 1, 0)
Stage3.Visible = false

local SuccessText = Instance.new("TextLabel")
SuccessText.Parent = Stage3
SuccessText.BackgroundTransparency = 1
SuccessText.Position = UDim2.new(0, 0, 0.3, 0)
SuccessText.Size = UDim2.new(1, 0, 0, 30)
SuccessText.Font = Enum.Font.GothamBold
SuccessText.Text = "HEIST COMPLETE"
SuccessText.TextColor3 = Color3.fromRGB(0, 255, 100)
SuccessText.TextSize = 20

local SuccessSub = Instance.new("TextLabel")
SuccessSub.Parent = Stage3
SuccessSub.BackgroundTransparency = 1
SuccessSub.Position = UDim2.new(0, 0, 0.45, 0)
SuccessSub.Size = UDim2.new(1, 0, 0, 20)
SuccessSub.Font = Enum.Font.Gotham
SuccessSub.Text = "File saved to Xeno Workspace."
SuccessSub.TextColor3 = Color3.fromRGB(150, 150, 150)
SuccessSub.TextSize = 12

local CloseButton = Instance.new("TextButton")
CloseButton.Parent = Stage3
CloseButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CloseButton.Position = UDim2.new(0.5, -80, 0.7, 0)
CloseButton.Size = UDim2.new(0, 160, 0, 40)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "CLOSE & CLEAR"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseButton

CopyButton.MouseButton1Click:Connect(function()
    TweenService:Create(CopyButton, TweenInfo.new(0.1), {Size = UDim2.new(0, 180, 0, 45)}):Play()
    task.wait(0.1)
    Stage1.Visible = false
    Stage2.Visible = true
    TweenService:Create(BarFill, TweenInfo.new(2, Enum.EasingStyle.Quad), {Size = UDim2.new(0.3, 0, 1, 0)}):Play()
    task.spawn(function()
        if saveinstance then
            LoadingText.Text = "RIPPING GEOMETRY..."
            task.wait(1)
            TweenService:Create(BarFill, TweenInfo.new(3), {Size = UDim2.new(0.6, 0, 1, 0)}):Play()
            local options = {mode = "optimized", noscripts = false, timeout = 30}
            saveinstance(options) 
            TweenService:Create(BarFill, TweenInfo.new(0.5), {Size = UDim2.new(1, 0, 1, 0)}):Play()
            task.wait(0.5)
            Stage2.Visible = false
            Stage3.Visible = true
        else
            LoadingText.Text = "ERROR: SaveInstance Failed!"
            LoadingText.TextColor3 = Color3.fromRGB(255, 0, 0)
            task.wait(2)
            Stage2.Visible = false
            Stage1.Visible = true
        end
    end)
end)

CloseButton.MouseButton1Click:Connect(function()
    TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0,0,0,0)}):Play()
    TweenService:Create(Blur, TweenInfo.new(0.5), {Size = 0}):Play()
    task.wait(0.5)
    ScreenGui:Destroy()
    Blur:Destroy()
end)
]]

-- -------------------------------------------------------------
-- TRANSMUTATION LOGIC
-- -------------------------------------------------------------

local function Corrupt(source)
    local result = ""
    for i = 1, #source do
        local char = string.byte(string.sub(source, i, i))
        result = result .. "\\" .. char
    end
    return result
end

local Payload = 'loadstring("' .. Corrupt(TargetScript) .. '")()'

-- Attempt to copy to clipboard
local success, err = pcall(function()
    setclipboard(Payload)
end)

if success then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "STATIC VOID";
        Text = "CORRUPTED SCRIPT COPIED TO CLIPBOARD!";
        Duration = 10;
    })
else
    -- Fallback print if setclipboard fails
    print("\n\n" .. Payload .. "\n\n")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "ERROR";
        Text = "Could not auto-copy. Check Console (F9).";
        Duration = 10;
    })
end
