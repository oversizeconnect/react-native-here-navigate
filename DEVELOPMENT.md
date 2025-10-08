# Development Guide

## Quick Package Update & Publish

### 1. Make your changes

Edit the source files in `src/`, `ios/`, or `android/` directories.

### 2. Update version

```bash
# Edit package.json and increment version (e.g., 1.0.3 → 1.0.4)
```

### 3. Build & Publish

```bash
# Build the package
npx react-native-builder-bob build

# Publish to GitHub Packages
npm publish
```

### 4. Update consuming projects

```bash
# In your mobile app project
yarn add @oversizeconnect/react-native-here-navigate@1.0.4
```

## Prerequisites

- Node.js & Yarn installed
- GitHub Personal Access Token with `packages:write` permission
- `.npmrc` configured for GitHub Packages

## Package Info

- **Name**: `@oversizeconnect/react-native-here-navigate`
- **Registry**: GitHub Packages (`https://npm.pkg.github.com`)
- **Scoped**: All `@oversizeconnect/*` packages require GitHub Packages registry
