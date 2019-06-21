//
//  VisionSampleViewController.swift
//  VisionFrameworkSample
//
//  Created by 伊藤凌也 on 2019/06/21.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit
import AVFoundation
import Vision

class VisionSampleViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {

    let textView = UITextView(frame: CGRect(x: 100, y: 100, width: 300, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startCapture()
        
        view.addSubview(textView)
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        // CMSampleBufferをCVPixelBufferに変換
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else {
            assertionFailure("Error: バッファの変換に失敗しました")
            return
        }
        
        // この中にVision.frameworkの処理を書いていく
        guard let model = try? VNCoreMLModel(for: Resnet50().model) else {
            assertionFailure("Error: CoreMLモデルの初期化に失敗しました。")
            return
        }
        
        // 画像認識リクエストを作成
        let request = VNCoreMLRequest(model: model) { [weak self] request, error in
            guard let results = request.results as? [VNClassificationObservation] else { return }
            
            // 判別結果を取得(上位３件まで)
            let displayText = results.prefix(3).compactMap {
                "\(Int($0.confidence * 100))% \($0.identifier.components(separatedBy: ",")[0])"
            }
            .joined(separator: "\n")
            
            DispatchQueue.main.async {
                self?.textView.text = displayText
            }
        }
        
        guard let _ = try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request]) else {
            assertionFailure("Error: リクエスト失敗")
            return
        }
    }
    
    private func startCapture() {
        let captureSession = AVCaptureSession()
        captureSession.sessionPreset = .photo
        
        // 入力の指定
        guard let captureDevice = AVCaptureDevice.default(for: .video),
            let input = try? AVCaptureDeviceInput(device: captureDevice),
            captureSession.canAddInput(input) else {
                assertionFailure("Error: 入力デバイスを追加できませんでした")
                return
        }
        
        captureSession.addInput(input)
        
        // 出力の指定
        let output = AVCaptureVideoDataOutput()
        output.setSampleBufferDelegate(self, queue: DispatchQueue(label: "VideoQueue"))
        
        guard captureSession.canAddOutput(output) else {
            assertionFailure("Error: 出力デバイスを追加できませんでした")
            return
        }
        captureSession.addOutput(output)
        
        // プレビューの指定
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.frame = view.bounds
        view.layer.insertSublayer(previewLayer, at: 0)
        
        // キャプチャ開始
        captureSession.startRunning()
    }
}
