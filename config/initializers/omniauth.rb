Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,'GHitvLRasXcS9eZPCkmb7tCnw','1HRnCaFNS7FDWFonwl55Sllw3BdMcv6XU4FXYZYf3XOrzmnfe3'
  provider :facebook, '866201090153626', 'dec755c610c6b557623929ec7dcc26ed'
end