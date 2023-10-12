tool
extends "res://addons/Popochiu/Engine/Interfaces/IAudio.gd"

# classes ----
const AudioCueSound := preload("res://addons/Popochiu/Engine/AudioManager/AudioCueSound.gd")
const AudioCueMusic := preload("res://addons/Popochiu/Engine/AudioManager/AudioCueMusic.gd")
# ---- classes
var mx_explore_cut30: AudioCueMusic = preload("res://popochiu/Audio/Music/MxExploreCut30.tres")
var mx_explore_cut60: AudioCueMusic = preload("res://popochiu/Audio/Music/MxExploreCut60.tres")
var mx_explore_intensity1: AudioCueMusic = preload("res://popochiu/Audio/Music/MxExploreIntensity1.tres")
var mx_explore_intensity2: AudioCueMusic = preload("res://popochiu/Audio/Music/MxExploreIntensity2.tres")
var mx_explore_main: AudioCueMusic = preload("res://popochiu/Audio/Music/MxExploreMain.tres")
var mx_nothing_cut30: AudioCueMusic = preload("res://popochiu/Audio/Music/MxNothingCut30.tres")
var mx_nothing_cut60: AudioCueMusic = preload("res://popochiu/Audio/Music/MxNothingCut60.tres")
var mx_nothing_intensity1: AudioCueMusic = preload("res://popochiu/Audio/Music/MxNothingIntensity1.tres")
var mx_nothing_intensity2: AudioCueMusic = preload("res://popochiu/Audio/Music/MxNothingIntensity2.tres")
var mx_nothing_main: AudioCueMusic = preload("res://popochiu/Audio/Music/MxNothingMain.tres")

# cues ----


